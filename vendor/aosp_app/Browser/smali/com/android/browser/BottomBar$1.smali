.class Lcom/android/browser/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BottomBar;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BottomBar;


# direct methods
.method constructor <init>(Lcom/android/browser/BottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/browser/BottomBar$1;->this$0:Lcom/android/browser/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/BottomBar$1;->this$0:Lcom/android/browser/BottomBar;

    #getter for: Lcom/android/browser/BottomBar;->mUiController:Lcom/android/browser/UiController;
    invoke-static {v0}, Lcom/android/browser/BottomBar;->access$000(Lcom/android/browser/BottomBar;)Lcom/android/browser/UiController;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 106
    return-void
.end method
