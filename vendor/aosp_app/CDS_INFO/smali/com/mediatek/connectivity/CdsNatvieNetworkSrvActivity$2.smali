.class Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$2;
.super Landroid/os/Handler;
.source "CdsNatvieNetworkSrvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$2;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 165
    const-string v1, ""

    .line 166
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 168
    .local v0, id:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #output:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 171
    .restart local v1       #output:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 172
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$2;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    #calls: Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->updateInfo(ILjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->access$100(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_0
    .end packed-switch
.end method
