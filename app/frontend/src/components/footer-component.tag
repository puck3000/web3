<footer-component>
    <footer class="footer">
        <div class="content has-text-centered">
            <p>
                <strong>IssuTräggr3000</strong> by Pascal Haupt, Daniel Lerch, Ioannis Zorbas. <br>
                Testing Suite found here: <br>
                Code on ZHAW-Github:
                <br><br>
                <button onclick={ reset }>RESET THA LOCO STORE</button>

        </div>
    </footer>

    <script>
        var tag = this;
        tag.reset = function () {
            localStorage.clear();
            riot.update();
            console.log('reset');
        }
    </script>
</footer-component>