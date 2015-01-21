.class Lcom/mediatek/lbs/em/LbsMap$6;
.super Ljava/lang/Object;
.source "LbsMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMap;->openDialogAddr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editText_addr:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$6;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsMap$6;->val$editText_addr:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsMap$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$6;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:showMarkerInfoByAddr(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMap$6;->val$editText_addr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 284
    return-void
.end method
