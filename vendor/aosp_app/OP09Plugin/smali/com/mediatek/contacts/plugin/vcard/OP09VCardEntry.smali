.class public Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;
.super Lcom/android/vcard/VCardEntry;
.source "OP09VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OP09VCardEntry"

.field public static final PROPERTY_GROUPS:Ljava/lang/String; = "GROUPS"


# instance fields
.field private groupIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccount:Landroid/accounts/Account;

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->groupIds:Ljava/util/Map;

    .line 39
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->groupIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mGroupList:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mGroupList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;-><init>(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 3
    .parameter
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, elemList:Ljava/util/List;,"Ljava/util/List<+Lcom/android/vcard/VCardEntry$EntryElement;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 51
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v2}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 53
    .local v0, elem:Lcom/android/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 55
    .end local v0           #elem:Lcom/android/vcard/VCardEntry$EntryElement;
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 57
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addMoreIterateOneList(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .parameter "iterator"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mGroupList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 46
    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 6
    .parameter "property"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/vcard/VCardEntry;->addProperty(Lcom/android/vcard/VCardProperty;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, propertyName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v1

    .line 66
    .local v1, propertyBytes:[B
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-nez v1, :cond_2

    .line 79
    :cond_1
    return-void

    .line 71
    :cond_2
    const-string v5, "GROUPS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    invoke-direct {p0, v4}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->addGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mResolver:Landroid/content/ContentResolver;

    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
