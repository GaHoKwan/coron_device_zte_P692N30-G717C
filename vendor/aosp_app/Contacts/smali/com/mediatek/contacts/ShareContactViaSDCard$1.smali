.class Lcom/mediatek/contacts/ShareContactViaSDCard$1;
.super Ljava/lang/Object;
.source "ShareContactViaSDCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/ShareContactViaSDCard;->showAlertDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 164
    return-void
.end method
