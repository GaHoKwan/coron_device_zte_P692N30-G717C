.class public Lcom/android/contacts/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static final PROFILE_LOOKUP_KEY:Ljava/lang/String; = "profile"

.field private static final TAG:Ljava/lang/String; = "ContactNfcHandler"


# instance fields
.field private final mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter "contactFragment"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 60
    return-void
.end method

.method public static register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 3
    .parameter "activity"
    .parameter "contactFragment"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 52
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v1, Lcom/android/contacts/NfcHandler;

    invoke-direct {v1, p1}, Lcom/android/contacts/NfcHandler;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

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

    .line 65
    iget-object v10, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 67
    .local v7, resolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, lookupKey:Ljava/lang/String;
    const-string v10, "profile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 73
    sget-object v10, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v12, "nophoto"

    const-string v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 82
    .local v8, shareUri:Landroid/net/Uri;
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v4, ndefBytes:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 86
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 87
    .local v9, vcardInputStream:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, r:I
    if-lez v5, :cond_1

    .line 88
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v5           #r:I
    .end local v9           #vcardInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ContactNfcHandler"

    const-string v12, "IOException creating vcard."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 100
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v8           #shareUri:Landroid/net/Uri;
    :goto_2
    return-object v10

    .line 77
    .restart local v3       #lookupKey:Ljava/lang/String;
    :cond_0
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

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

    .restart local v8       #shareUri:Landroid/net/Uri;
    goto :goto_0

    .line 90
    .restart local v0       #buffer:[B
    .restart local v4       #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #r:I
    .restart local v9       #vcardInputStream:Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 92
    const-string v10, "text/x-vcard"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v10, v12}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 93
    .local v6, record:Landroid/nfc/NdefRecord;
    new-instance v10, Landroid/nfc/NdefMessage;

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v10, v6, v12}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 99
    .end local v0           #buffer:[B
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v5           #r:I
    .end local v6           #record:Landroid/nfc/NdefRecord;
    .end local v8           #shareUri:Landroid/net/Uri;
    .end local v9           #vcardInputStream:Ljava/io/InputStream;
    :cond_2
    const-string v10, "ContactNfcHandler"

    const-string v12, "No contact URI to share."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 100
    goto :goto_2
.end method
