.class public abstract Ltmsdkobf/jv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public xB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/jv$a;->xB:Z

    return-void
.end method


# virtual methods
.method public abstract eU()Z
.end method

.method public abstract g(Ljava/io/File;)V
.end method

.method public h(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 1518
    return-void
.end method
