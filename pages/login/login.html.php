<div class="container login-form">
    <div class="row">
        <form action="/hijricpanel" method="post">
            <?php
            if(isset($_SESSION['system_message'])) { ?>
            <div class="alert alert-danger" role="alert">
                <?= $_SESSION['system_message']; ?>
                <?php if(isset($_SESSION['system_message'])){ unset($_SESSION['system_message']); } ?>
            </div>
            <?php } ?>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" class="form-control" id="username" placeholder="Enter username" required>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary">login</button>
        </form>
    </div>
</div>
