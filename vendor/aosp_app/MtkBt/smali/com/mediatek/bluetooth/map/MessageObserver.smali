.class public Lcom/mediatek/bluetooth/map/MessageObserver;
.super Landroid/database/ContentObserver;
.source "MessageObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;,
        Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageObserver"


# instance fields
.field private mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

.field private mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

.field mLock:Ljava/lang/Object;

.field private mType:I

.field previousMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;Lcom/mediatek/bluetooth/map/ControllerListener;I)V
    .locals 2
    .parameter "helper"
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    .line 66
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    .line 67
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    .line 68
    iput p3, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;-><init>(Lcom/mediatek/bluetooth/map/MessageObserver;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/MessageObserver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/MessageObserver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "MessageObserver"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "onSelf"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 78
    new-instance v0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;-><init>(Lcom/mediatek/bluetooth/map/MessageObserver;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method
