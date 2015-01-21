.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 458
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 459
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 463
    if-eqz p3, :cond_0

    .line 464
    const-string v0, "QueryBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: Conut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;
    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->access$700(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 467
    return-void
.end method
