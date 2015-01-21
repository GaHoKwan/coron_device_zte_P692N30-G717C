.class Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;
.super Landroid/os/AsyncTask;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateRSAKeyPairTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 1641
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1642
    .local v0, type:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRSAKeyPair(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 1645
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 1646
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1648
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1637
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mInitResult:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1102(Lcom/zte/heartyservice/privacy/PasswordSetting;Z)Z

    .line 1654
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 1655
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1637
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
