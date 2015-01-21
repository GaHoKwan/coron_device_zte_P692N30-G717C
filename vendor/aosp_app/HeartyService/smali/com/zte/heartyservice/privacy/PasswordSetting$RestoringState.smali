.class Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoringState"
.end annotation


# instance fields
.field mBackupDirPath:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "backupDirPath"
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .line 571
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 572
    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 568
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mBackupDirPath:Ljava/lang/String;

    .line 569
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mPassword:Ljava/lang/String;

    .line 573
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mBackupDirPath:Ljava/lang/String;

    .line 574
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mPassword:Ljava/lang/String;

    .line 575
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 579
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mBackupDirPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;->mPassword:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 580
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return-object v0
.end method
