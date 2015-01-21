.class Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;
.super Ljava/lang/Object;
.source "CdsRadioInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsRadioInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 941
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 944
    .local v0, atCmdLine:[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$2400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 946
    const-string v1, "cds_phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute AT command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$2500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 951
    return-void
.end method
