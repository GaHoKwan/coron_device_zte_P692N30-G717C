.class public Lcom/android/contacts/quickcontact/ActionMultiMap;
.super Ljava/util/HashMap;
.source "ActionMultiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/quickcontact/Action;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V
    .locals 1
    .parameter "mimeType"
    .parameter "info"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 29
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V
    .locals 2
    .parameter "mimeType"
    .parameter "info"
    .parameter "front"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .local v0, collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .restart local v0       #collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    if-eqz p3, :cond_1

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
