.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;
.super Landroid/os/AsyncTask;
.source "CurrentNetworkInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$1100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getScAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    move-object v0, p1

    .line 552
    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, gotScNumber:Ljava/lang/String;
    const-string v1, "CurrentNetworkInfoStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sms Service Center: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    const-string v2, "sms_center"

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method
