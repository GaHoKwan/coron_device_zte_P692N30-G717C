.class public Laus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public a:Ljava/util/List;

.field public a:Z

.field public b:I

.field public b:Ljava/util/List;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v1, p0, Laus;->a:Z

    .line 126
    iput-boolean v1, p0, Laus;->b:Z

    .line 127
    iput-boolean v1, p0, Laus;->d:Z

    .line 128
    iput-boolean v1, p0, Laus;->c:Z

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Laus;->a:I

    .line 130
    iput v1, p0, Laus;->b:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laus;->a:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laus;->b:Ljava/util/List;

    .line 133
    return-void
.end method
