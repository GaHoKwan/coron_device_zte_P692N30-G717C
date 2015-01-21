.class public Lcom/mediatek/apst/util/command/ResponseBatch;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ResponseBatch.java"

# interfaces
.implements Lcom/mediatek/apst/util/command/ICommandBatch;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/BaseCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "featureId"
    .parameter "requestToken"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/ResponseBatch;->commands:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/BaseCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/apst/util/command/ResponseBatch;->commands:Ljava/util/List;

    return-object v0
.end method
