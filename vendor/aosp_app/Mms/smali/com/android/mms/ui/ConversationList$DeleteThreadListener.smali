.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# static fields
.field public static sDeleteNumber:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteLockedMessages:Z

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mMaxMmsId:I

.field private mMaxSmsId:I

.field private mMode:Landroid/view/ActionMode;

.field private final mThreadIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1419
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1420
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 1421
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 1422
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 1423
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->sDeleteNumber:I

    .line 1424
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            "Landroid/view/ActionMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1427
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 1429
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 1430
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 1431
    iput-object p4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;

    .line 1432
    if-eqz p1, :cond_0

    .line 1433
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->sDeleteNumber:I

    .line 1435
    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1399
    iget v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxMmsId:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 1513
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1514
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 1439
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1440
    return-void
.end method

.method public setMaxMsgId(II)V
    .locals 0
    .parameter "mmsId"
    .parameter "smsId"

    .prologue
    .line 1413
    iput p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxMmsId:I

    .line 1414
    iput p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I

    .line 1415
    return-void
.end method
