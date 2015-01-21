.class public Lcom/mediatek/contacts/list/ContactsIntentResolverEx;
.super Lcom/android/contacts/list/ContactsIntentResolver;
.source "ContactsIntentResolverEx.java"


# static fields
.field public static final MODE_MASK_IMPORT_EXPORT_PICKER:I = 0x2000000

.field public static final MODE_MASK_VCARD_PICKER:I = 0x1000000

.field public static final REQ_TYPE_IMPORT_EXPORT_PICKER:I = 0x1

.field private static final REQ_TYPE_VCARD_PICKER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactsIntentResolverEx"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    .line 40
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 7
    .parameter "intent"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/mediatek/contacts/util/ContactsIntent;->contain(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v4, "ContactsIntentResolverEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called with action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 51
    .local v1, request:Lcom/android/contacts/list/ContactsRequest;
    const-string v4, "android.intent.action.contacts.list.PICKMULTICONTACTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 53
    const-string v4, "request_type"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, requestType:I
    packed-switch v2, :pswitch_data_0

    .line 89
    .end local v2           #requestType:I
    :cond_0
    :goto_0
    :pswitch_0
    const-string v4, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #request:Lcom/android/contacts/list/ContactsRequest;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 57
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #request:Lcom/android/contacts/list/ContactsRequest;
    .restart local v2       #requestType:I
    :pswitch_1
    const v4, 0x100003d

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    const v4, 0x200003d

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 69
    .end local v2           #requestType:I
    :cond_2
    const-string v4, "android.intent.action.contacts.list.PICKMULTIEMAILS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    const/16 v4, 0x6a

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v4, "android.intent.action.contacts.list.PICKMULTIPHONES"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 73
    :cond_4
    const-string v4, "android.intent.action.contacts.list.DELETEMULTICONTACTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    const/16 v4, 0x3e

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 75
    :cond_5
    const-string v4, "android.intent.action.contacts.list.group.MOVEMULTICONTACTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 77
    :cond_6
    const-string v4, "android.intent.action.contacts.list.PICKMULTIPHONEANDEMAILS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    const/16 v4, 0x5c

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 79
    :cond_7
    const-string v4, "android.intent.action.contacts.list.SHAREMULTICONTACTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 80
    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 81
    :cond_8
    const-string v4, "android.intent.action.contacts.list.group.ADDMULTICONTACTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 82
    const/16 v4, 0x41

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 83
    :cond_9
    const-string v4, "android.intent.action.contacts.list.PICKMULTIDATAS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 96
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #request:Lcom/android/contacts/list/ContactsRequest;
    :cond_a
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    goto/16 :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
