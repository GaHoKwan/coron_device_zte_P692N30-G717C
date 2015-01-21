.class public interface abstract Lcom/mediatek/mms/ext/IMmsManageSimMessage;
.super Ljava/lang/Object;
.source "IMmsManageSimMessage.java"


# virtual methods
.method public abstract canBeOperated(Landroid/database/Cursor;)Z
.end method

.method public abstract filterUnoperatedMsgs([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getAllContentUriForInternationalCard(I)Landroid/net/Uri;
.end method

.method public abstract hasIncludeUnoperatedMessage(Ljava/util/Iterator;)Z
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
.end method

.method public abstract isInternationalCard(I)Z
.end method
