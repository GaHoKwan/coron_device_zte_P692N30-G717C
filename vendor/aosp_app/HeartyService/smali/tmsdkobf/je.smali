.class public interface abstract Ltmsdkobf/je;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sW:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ltmsdkobf/je;->sW:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
