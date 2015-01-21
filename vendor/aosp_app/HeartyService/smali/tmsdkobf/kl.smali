.class public abstract Ltmsdkobf/kl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ko;


# instance fields
.field private mCancel:Z

.field private yt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fk()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Ltmsdkobf/kl;->yt:J

    return-wide v0
.end method

.method public fl()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Ltmsdkobf/kl;->mCancel:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
