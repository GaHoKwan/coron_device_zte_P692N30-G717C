.class Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CdsRadioInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsRadioInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeminiPhoneStateListener"
.end annotation


# instance fields
.field mListenSimID:I

.field final synthetic this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;I)V
    .locals 1
    .parameter
    .parameter "simID"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->mListenSimID:I

    .line 256
    iput p2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->mListenSimID:I

    .line 257
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 0
    .parameter "cfi"

    .prologue
    .line 287
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string v0, "cds_phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->mListenSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$600(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/telephony/CellLocation;)V

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats2()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 270
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataState()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 262
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$100(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePdpList()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$200(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateNetworkType()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$300(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 265
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 0
    .parameter "mwi"

    .prologue
    .line 282
    return-void
.end method
