.class Lcom/android/music/MusicDialog$1;
.super Ljava/lang/Object;
.source "MusicDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicDialog;


# direct methods
.method constructor <init>(Lcom/android/music/MusicDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/music/MusicDialog$1;->this$0:Lcom/android/music/MusicDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/music/MusicDialog$1;->this$0:Lcom/android/music/MusicDialog;

    #getter for: Lcom/android/music/MusicDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/music/MusicDialog;->access$000(Lcom/android/music/MusicDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 35
    return-void
.end method
