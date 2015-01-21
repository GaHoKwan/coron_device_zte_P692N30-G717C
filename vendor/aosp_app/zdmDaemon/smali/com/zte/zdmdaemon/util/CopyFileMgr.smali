.class public Lcom/zte/zdmdaemon/util/CopyFileMgr;
.super Ljava/lang/Object;
.source "CopyFileMgr.java"


# static fields
.field public static final ASSEST_COPY_TYPE:I = 0x1

.field private static instance:Lcom/zte/zdmdaemon/util/CopyFileMgr;


# instance fields
.field private context:Landroid/content/Context;

.field private copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

.field private copyFileHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zte/zdmdaemon/util/CopyFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFileHolder:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static CreateCopyMgrInstance(Landroid/content/Context;)Lcom/zte/zdmdaemon/util/CopyFileMgr;
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    sget-object v0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->instance:Lcom/zte/zdmdaemon/util/CopyFileMgr;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/zte/zdmdaemon/util/CopyFileMgr;

    invoke-direct {v0, p0}, Lcom/zte/zdmdaemon/util/CopyFileMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->instance:Lcom/zte/zdmdaemon/util/CopyFileMgr;

    .line 34
    :cond_0
    sget-object v0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->instance:Lcom/zte/zdmdaemon/util/CopyFileMgr;

    return-object v0
.end method


# virtual methods
.method public createCopyFileInstance(I)Lcom/zte/zdmdaemon/util/CopyFile;
    .locals 2
    .parameter "copyType"

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance v0, Lcom/zte/zdmdaemon/util/AssestCopyFile;

    iget-object v1, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdmdaemon/util/AssestCopyFile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/zte/zdmdaemon/util/AssestCopyFile;

    iget-object v1, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdmdaemon/util/AssestCopyFile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCopyFileInstance(I)Lcom/zte/zdmdaemon/util/CopyFile;
    .locals 3
    .parameter "copyType"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFileHolder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdmdaemon/util/CopyFile;

    iput-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    .line 39
    iget-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/zte/zdmdaemon/util/CopyFileMgr;->createCopyFileInstance(I)Lcom/zte/zdmdaemon/util/CopyFile;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    .line 41
    iget-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFileHolder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zte/zdmdaemon/util/CopyFileMgr;->copyFile:Lcom/zte/zdmdaemon/util/CopyFile;

    return-object v0
.end method
