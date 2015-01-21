.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getShortcutsNoQuery(Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

.field final synthetic val$allowWebSearchShortcuts:Z

.field final synthetic val$allowedCorpora:Ljava/util/Collection;

.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/util/Collection;ZJLcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$allowedCorpora:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$allowWebSearchShortcuts:Z

    iput-wide p4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$now:J

    iput-object p6, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$allowedCorpora:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$allowWebSearchShortcuts:Z

    iget-wide v4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$now:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getShortcutsNoQuery(Ljava/util/Collection;ZJ)Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v0

    .line 314
    .local v0, shortcuts:Lcom/android/quicksearchbox/ShortcutCursor;
    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v1, v0}, Lcom/android/quicksearchbox/util/Consumers;->consumeCloseable(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    .line 315
    return-void
.end method
