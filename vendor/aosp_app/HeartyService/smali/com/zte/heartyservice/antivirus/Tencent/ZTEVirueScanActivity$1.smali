.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;
.super Ljava/lang/Object;
.source "ZTEVirueScanActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 43
    const-string v0, "ZTEVirueScanActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->setDefaultUI(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->setCheckingUI()V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->setUpdatingUI(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
