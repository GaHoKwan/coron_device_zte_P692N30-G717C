.class Lcom/android/inputmethod/research/ResearchLogger$3;
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
    .line 257
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger$3;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger$3;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/ResearchLogger;->onUserLoggingConsent()V

    .line 261
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger$3;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    #getter for: Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLogger;->access$100(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 262
    return-void
.end method
