.class Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;
.super Ljava/lang/Object;
.source "ShareContactViaSDCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCard;Lcom/mediatek/contacts/ShareContactViaSDCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 338
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 331
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 327
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 342
    const/4 v0, 0x0

    return v0
.end method
