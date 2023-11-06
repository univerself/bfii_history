async function main (dv, _filter) {
    let team_results = {}

    const res_csv = await dv.io.csv("data/scores.csv")
    const results = res_csv
        .where(_filter)
        .groupBy(item => item.Участник)
        .forEach(item => {
            let team_id = item.key
            let team_res = item.rows.map(r=>({
                Команда: team_id,
                IDteam: r.IDteam,
                Название: r.Название,
                Город:	r.Город,
                Организация: r.Организация,
                Зачёт: r.Зачёт, 
                Место: (typeof(r.Место) == "number")?r.Место:parseFloat(r.Место.replace(",", ".")), 
                Очки: r.Очки,
                Состав: []
            }))
            team_results[team_id] = team_res
        })

    return team_results
}
module.exports = main;