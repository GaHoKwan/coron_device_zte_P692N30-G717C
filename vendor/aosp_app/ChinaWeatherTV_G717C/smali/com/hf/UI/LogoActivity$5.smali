.class Lcom/hf/UI/LogoActivity$5;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/UI/LogoActivity;Lcom/hf/UI/HFDialog;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LogoActivity$5;->this$0:Lcom/hf/UI/LogoActivity;

    iput-object p2, p0, Lcom/hf/UI/LogoActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/LogoActivity$5;->val$preferences:Landroid/content/SharedPreferences;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/UI/LogoActivity$5$1;

    iget-object v2, p0, Lcom/hf/UI/LogoActivity$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/LogoActivity$5$1;-><init>(Lcom/hf/UI/LogoActivity$5;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$5;->this$0:Lcom/hf/UI/LogoActivity;

    #calls: Lcom/hf/UI/LogoActivity;->initWeather()V
    invoke-static {v0}, Lcom/hf/UI/LogoActivity;->access$1(Lcom/hf/UI/LogoActivity;)V

    .line 163
    return-void
.end method
