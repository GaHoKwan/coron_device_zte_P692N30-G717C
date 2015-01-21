.class public Lcom/mediatek/contacts/NfcShareContactsHandler;
.super Ljava/lang/Object;
.source "NfcShareContactsHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactNfcHandler"


# instance fields
.field private final mMultiContactsShareFragment:Lcom/mediatek/contacts/list/MultiContactsShareFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/MultiContactsShareFragment;)V
    .locals 0
    .parameter "multiContactsShareFragment"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/contacts/NfcShareContactsHandler;->mMultiContactsShareFragment:Lcom/mediatek/contacts/list/MultiContactsShareFragment;

    .line 58
    return-void
.end method

.method public static register(Landroid/app/Activity;Lcom/mediatek/contacts/list/MultiContactsShareFragment;)V
    .locals 3
    .parameter "activity"
    .parameter "multiContactsShareFragment"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 50
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v1, Lcom/mediatek/contacts/NfcShareContactsHandler;

    invoke-direct {v1, p1}, Lcom/mediatek/contacts/NfcShareContactsHandler;-><init>(Lcom/mediatek/contacts/list/MultiContactsShareFragment;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 14
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    .line 63
    iget-object v10, p0, Lcom/mediatek/contacts/NfcShareContactsHandler;->mMultiContactsShareFragment:Lcom/mediatek/contacts/list/MultiContactsShareFragment;

    invoke-virtual {v10}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/mediatek/contacts/NfcShareContactsHandler;->mMultiContactsShareFragment:Lcom/mediatek/contacts/list/MultiContactsShareFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 65
    .local v7, resolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, lookupKey:Ljava/lang/String;
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v12, "nophoto"

    const-string v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 75
    .local v8, shareUri:Landroid/net/Uri;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v4, ndefBytes:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 79
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 80
    .local v9, vcardInputStream:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, r:I
    if-lez v5, :cond_0

    .line 81
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v5           #r:I
    .end local v9           #vcardInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ContactNfcHandler"

    const-string v12, "IOException creating vcard."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 93
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v8           #shareUri:Landroid/net/Uri;
    :goto_1
    return-object v10

    .line 83
    .restart local v0       #buffer:[B
    .restart local v3       #lookupKey:Ljava/lang/String;
    .restart local v4       #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #r:I
    .restart local v8       #shareUri:Landroid/net/Uri;
    .restart local v9       #vcardInputStream:Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 85
    const-string v10, "text/x-vcard"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v10, v12}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 86
    .local v6, record:Landroid/nfc/NdefRecord;
    new-instance v10, Landroid/nfc/NdefMessage;

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v10, v6, v12}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 92
    .end local v0           #buffer:[B
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v5           #r:I
    .end local v6           #record:Landroid/nfc/NdefRecord;
    .end local v8           #shareUri:Landroid/net/Uri;
    .end local v9           #vcardInputStream:Ljava/io/InputStream;
    :cond_1
    const-string v10, "ContactNfcHandler"

    const-string v12, "No contact URI to share."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 93
    goto :goto_1
.end method
