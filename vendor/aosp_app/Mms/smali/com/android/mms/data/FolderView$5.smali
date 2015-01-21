.class final Lcom/android/mms/data/FolderView$5;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/FolderView;->markFailedSmsMmsSeen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/data/FolderView$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/data/FolderView$5;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/data/FolderView;->markFailedSmsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/FolderView;->access$200(Landroid/content/Context;)V

    .line 222
    iget-object v0, p0, Lcom/android/mms/data/FolderView$5;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/data/FolderView;->markOutboxMmsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/FolderView;->access$300(Landroid/content/Context;)V

    .line 223
    return-void
.end method
