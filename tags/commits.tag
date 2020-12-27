<commits>
    <div class="row" each="{ commit in opts.data }">
        <a href="{ commit.html_url }">
        <div class="date">
            {
                (new Date(commit.commit.committer.date)).toLocaleDateString()
            }
        </div>
        <div class="message">
            { commit.commit.message }
        </div>
    </div>
    <style>
        .row {
            position: relative;
            font-size: 0.8em;
        }
        .date {
            position: absolute;
        }
        .message {
            padding-left: calc(72px + 8px);
        }
    </style>
</commits>