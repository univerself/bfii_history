async function main (dv, team_results, csv_path, _filter = undefined) {
    let scores = await dv.io.csv(csv_path)
	if(_filter) {
		scores = scores.where(_filter)
	}
    scores = scores.groupBy(item => item.Участник)
	scores.forEach(item => {
		let team_id = item.key
		let team_res = team_results[team_id]
		if(!team_res) {
			console.log(team_id)				
			team_res = dv.array([{
				Команда: team_id
			}])
			team_results[team_id] = team_res
		}
		team_res.mutate(r=>{
			item.rows.forEach(row => {
				r[`${row["№ этапа"]}. ${row["Этап"]}`] = row.Очки
			})
		})
	})
    return team_results
}
module.exports = main;