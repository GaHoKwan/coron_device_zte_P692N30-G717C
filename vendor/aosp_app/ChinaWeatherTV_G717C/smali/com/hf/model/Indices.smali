.class public final Lcom/hf/model/Indices;
.super Ljava/lang/Object;
.source "Indices.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public brief:Ljava/lang/String;

.field public indicesCode:I

.field public indicesDescription:Ljava/lang/String;

.field public indicesName:Ljava/lang/String;

.field public reportTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/model/Indices;->indicesCode:I

    .line 8
    return-void
.end method
