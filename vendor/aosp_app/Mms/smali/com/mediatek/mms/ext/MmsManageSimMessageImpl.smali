.class public Lcom/mediatek/mms/ext/MmsManageSimMessageImpl;
.super Landroid/content/ContextWrapper;
.source "MmsManageSimMessageImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsManageSimMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public canBeOperated(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public filterUnoperatedMsgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "simMsgIndex"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllContentUriForInternationalCard(I)Landroid/net/Uri;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasIncludeUnoperatedMessage(Ljava/util/Iterator;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isInternationalCard(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
