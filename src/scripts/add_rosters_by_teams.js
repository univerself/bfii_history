async function main (dv, team_results, _filter) {
    const players_csv = await dv.io.csv("data/players.csv")
    const players = players_csv
	.where(_filter)
	.groupBy(item => item.Участник)
	.forEach(item => {
		let team_id = item.key
		let team_res = team_results[team_id]
		if(!team_res) {
			team_res = dv.array([{
				Команда: team_id,
				Зачёт: "", 
				Место: "", 
				Очки: ""
			}])
			team_results[team_id] = team_res
		}
		let roster = item.rows.map(p=>({
			Игрок: p.Игрок, 
			Имя: p.Имя, 
			Фамилия: p.Фамилия, 
			Отчество: p.Отчество
		}))
		team_res.mutate(r=>{r.Состав = roster})
	})
    return team_results
}
module.exports = main;