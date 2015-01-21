.class public Ltmsdkobf/ky$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(IJ)J
    .locals 4
    .parameter "subIdent"
    .parameter "parentIdent"

    .prologue
    .line 23
    if-gez p0, :cond_0

    .line 24
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "thread pool sub-ident is negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 28
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "thread pool parent-ident is illegal"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_1
    int-to-long v2, p0

    add-long v0, v2, p1

    .line 33
    .local v0, id:J
    return-wide v0
.end method
