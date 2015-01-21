.class Lcom/android/inputmethod/research/ResearchLogger$1;
.super Ljava/lang/Object;
.source "ResearchLogger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 278
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger$1;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger$1;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    #getter for: Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLogger;->access$000(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 282
    return-void
.end method
