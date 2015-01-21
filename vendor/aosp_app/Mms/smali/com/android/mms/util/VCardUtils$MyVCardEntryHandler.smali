.class Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;
.super Ljava/lang/Object;
.source "VCardUtils.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyVCardEntryHandler"
.end annotation


# instance fields
.field private mVCardEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;->mVCardEntryList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/VCardUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getVCardEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;->mVCardEntryList:Ljava/util/List;

    return-object v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyVCardEntryHandler;->mVCardEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method
