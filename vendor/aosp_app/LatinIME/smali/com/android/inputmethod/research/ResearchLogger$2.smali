.class Lcom/android/inputmethod/research/ResearchLogger$2;
.super Ljava/lang/Object;
.source "ResearchLogger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/ResearchLogger;->maybeShowSplashScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/research/ResearchLogger;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/ResearchLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger$2;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger$2;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    #getter for: Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v3}, Lcom/android/inputmethod/research/ResearchLogger;->access$000(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 270
    .local v2, packageUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger$2;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    #getter for: Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v3}, Lcom/android/inputmethod/research/ResearchLogger;->access$000(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
