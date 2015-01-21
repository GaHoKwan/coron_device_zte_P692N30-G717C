.class Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;
.super Ljava/lang/Object;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    const-class v3, Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    return-void
.end method
