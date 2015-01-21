.class abstract Leu/chainfire/supersu/AsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:Ljava/lang/Object;Result:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Callable<TResult;>;"
    }
.end annotation


# instance fields
.field 櫯:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leu/chainfire/supersu/AsyncTask$WorkerRunnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
