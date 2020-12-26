const github_endpoint = 'https://api.github.com'

document.addEventListener('DOMContentLoaded', async () => {
    const repos = getRepos(github_endpoint + '/users/mefcn/repos')
    repos.forEach(repo => {
        console.log(repo)
    }
})

async function getRepos(url, user) {
    const repos = []
    const res = await fetch(url)
    const json = await res.json()

    json.forEach(repo => {
        repos.push(repo.name)
    })

    return repos
}