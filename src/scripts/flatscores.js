function main (team_results) {
    let flat_results = []
    Object.values(team_results).forEach(team =>{
        team.forEach(res => {
            flat_results.push(res)
        })
    })
    return flat_results
}
module.exports = main;