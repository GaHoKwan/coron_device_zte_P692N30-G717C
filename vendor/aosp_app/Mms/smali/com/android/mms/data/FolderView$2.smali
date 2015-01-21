.class final Lcom/android/mms/data/FolderView$2;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/FolderView;->startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$queryHandler:Landroid/content/AsyncQueryHandler;

.field final synthetic val$queryToken:I


# direct methods
.method constructor <init>(Landroid/content/AsyncQueryHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/mms/data/FolderView$2;->val$queryHandler:Landroid/content/AsyncQueryHandler;

    iput p2, p0, Lcom/android/mms/data/FolderView$2;->val$queryToken:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/mms/data/FolderView$2;->val$queryHandler:Landroid/content/AsyncQueryHandler;

    iget v1, p0, Lcom/android/mms/data/FolderView$2;->val$queryToken:I

    invoke-static {}, Lcom/android/mms/data/FolderView;->access$000()Landroid/net/Uri;

    move-result-object v3

    const-string v7, "date DESC"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
