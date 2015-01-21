.class public Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;
.super Lcom/android/vcard/VCardEntryConstructor;
.source "OP09VCardEntryConstructor.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "OP09VCardEntryConstructor"

    sput-object v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const/high16 v0, -0x4000

    invoke-direct {p0, v0, v1, v1}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "vcardType"
    .parameter "account"
    .parameter "targetCharset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 37
    iput p1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;->mVCardType:I

    .line 38
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 39
    return-void
.end method


# virtual methods
.method public getVCardEntry()Lcom/android/vcard/VCardEntry;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    iget v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method
