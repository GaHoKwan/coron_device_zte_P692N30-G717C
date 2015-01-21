.class Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;
.super Ljava/lang/Object;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    return-void
.end method
