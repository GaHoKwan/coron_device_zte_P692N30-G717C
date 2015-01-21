.class Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final 櫯:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final 鷭:Leu/chainfire/supersu/AsyncTask;


# direct methods
.method varargs constructor <init>(Leu/chainfire/supersu/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Leu/chainfire/supersu/AsyncTask;[TData;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;->鷭:Leu/chainfire/supersu/AsyncTask;

    .line 524
    iput-object p2, p0, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;->櫯:[Ljava/lang/Object;

    .line 525
    return-void
.end method
