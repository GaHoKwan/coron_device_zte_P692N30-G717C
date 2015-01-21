.class Lcom/hf/UI/LogoActivity$2;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/LogoActivity;->showPermissionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/LogoActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/LogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LogoActivity$2;->this$0:Lcom/hf/UI/LogoActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$2;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v0}, Lcom/hf/UI/LogoActivity;->finish()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
