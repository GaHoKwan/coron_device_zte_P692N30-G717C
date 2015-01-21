.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsIntentResolver"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 53
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 14
    .parameter "intent"

    .prologue
    .line 56
    new-instance v7, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v7}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 58
    .local v7, request:Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v11, "ContactsIntentResolver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Called with action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v11, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 63
    const/16 v11, 0xa

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 193
    :cond_0
    :goto_0
    const-string v11, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 195
    invoke-virtual {v7, v9}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 197
    :cond_1
    return-object v7

    .line 64
    .end local v9           #title:Ljava/lang/String;
    :cond_2
    const-string v11, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 65
    const/16 v11, 0xf

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v11, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 67
    const/16 v11, 0x11

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v11, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 69
    const/16 v11, 0x1e

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v11, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 71
    const/16 v11, 0x28

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 72
    :cond_6
    const-string v11, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 73
    const/16 v11, 0x32

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 74
    :cond_7
    const-string v11, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 75
    const/16 v11, 0x14

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 77
    :cond_8
    const-string v11, "android.intent.action.PICK"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 78
    iget-object v11, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v11}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, resolvedType:Ljava/lang/String;
    const-string v11, "vnd.android.cursor.dir/contact"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 80
    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 81
    :cond_9
    const-string v11, "vnd.android.cursor.dir/person"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 82
    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 83
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v11, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 85
    const/16 v11, 0x5a

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v11, "vnd.android.cursor.dir/phone"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 87
    const/16 v11, 0x5a

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 88
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v11, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 90
    const/16 v11, 0x64

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 91
    :cond_d
    const-string v11, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 92
    const/16 v11, 0x64

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 93
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 94
    :cond_e
    const-string v11, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 95
    const/16 v11, 0x69

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 97
    .end local v8           #resolvedType:Ljava/lang/String;
    :cond_f
    const-string v11, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, component:Ljava/lang/String;
    const-string v11, "alias.DialShortcut"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 100
    const/16 v11, 0x78

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 101
    :cond_10
    const-string v11, "alias.MessageShortcut"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 102
    const/16 v11, 0x82

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 104
    :cond_11
    const/16 v11, 0x6e

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 106
    .end local v1           #component:Ljava/lang/String;
    :cond_12
    const-string v11, "android.intent.action.GET_CONTENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, type:Ljava/lang/String;
    const-string v11, "vnd.android.cursor.item/contact"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 116
    const-string v11, "contactPhoto"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 117
    .local v4, getPhoto:Z
    if-nez v4, :cond_13

    .line 118
    const/16 v11, 0x46

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 120
    :cond_13
    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 125
    .end local v4           #getPhoto:Z
    :cond_14
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 126
    const/16 v11, 0x5a

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 127
    :cond_15
    const-string v11, "vnd.android.cursor.item/phone"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 128
    const/16 v11, 0x5a

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 129
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 130
    :cond_16
    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 131
    const/16 v11, 0x64

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 132
    :cond_17
    const-string v11, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 133
    const/16 v11, 0x64

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 134
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 135
    :cond_18
    const-string v11, "vnd.android.cursor.item/person"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 136
    const/16 v11, 0x46

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 137
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 139
    .end local v10           #type:Ljava/lang/String;
    :cond_19
    const-string v11, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 140
    const/16 v11, 0x50

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 141
    :cond_1a
    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 142
    const-string v11, "query"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, query:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 146
    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    :cond_1b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 149
    const-string v11, "email"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    :cond_1c
    invoke-virtual {v7, v6}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 152
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 153
    .end local v6           #query:Ljava/lang/String;
    :cond_1d
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 154
    iget-object v11, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v11}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .restart local v8       #resolvedType:Ljava/lang/String;
    const-string v11, "vnd.android.cursor.dir/contact"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "vnd.android.cursor.dir/person"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 157
    :cond_1e
    const/16 v11, 0xf

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 159
    :cond_1f
    const/16 v11, 0x8c

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 161
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 164
    .end local v8           #resolvedType:Ljava/lang/String;
    :cond_20
    const-string v11, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 168
    const/16 v11, 0xa

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 170
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_21

    .line 171
    const-string v11, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 173
    const-string v11, "originalRequest"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactsRequest;

    .line 175
    .local v5, originalRequest:Lcom/android/contacts/list/ContactsRequest;
    if-eqz v5, :cond_21

    .line 176
    invoke-virtual {v7, v5}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 180
    .end local v5           #originalRequest:Lcom/android/contacts/list/ContactsRequest;
    :cond_21
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 185
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_22
    const-string v11, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 187
    .local v2, data:Landroid/net/Uri;
    const/16 v11, 0x8c

    invoke-virtual {v7, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 188
    invoke-virtual {v7, v2}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 189
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
