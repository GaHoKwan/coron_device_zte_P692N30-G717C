.class public Lcom/android/exchange/adapter/Search$TestSearchParser;
.super Lcom/android/exchange/adapter/Search$SearchParser;
.source "Search.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestSearchParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/Search;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Search;Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "in"
    .parameter "service"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/exchange/adapter/Search$TestSearchParser;->this$0:Lcom/android/exchange/adapter/Search;

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getTotalResults()I

    move-result v0

    return v0
.end method

.method public bridge synthetic parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->parse()Z

    move-result v0

    return v0
.end method
