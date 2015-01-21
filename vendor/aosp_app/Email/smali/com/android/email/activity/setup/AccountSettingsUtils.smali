.class public Lcom/android/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    }
.end annotation


# static fields
.field private static final DOMAIN_SEPARATOR:Ljava/lang/String; = "\\."

.field private static final WILD_CHARACTER:C = '?'

.field private static final WILD_STRING:Ljava/lang/String; = "*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method public static CollectAutoSetupDomain(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, serverName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 106
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    if-eq v4, v7, :cond_2

    .line 107
    if-ne v4, v8, :cond_0

    const-string v5, "provider"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string v5, "domain"

    invoke-static {p0, v3, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, providerDomain:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->hasWildchars(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 111
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v1           #providerDomain:Ljava/lang/String;
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Email"

    const-string v6, "Error while trying to load manual_setup_helper settings."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-object v2

    .line 116
    .restart local v3       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v4       #xmlEventType:I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 117
    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 118
    if-ne v4, v8, :cond_3

    const-string v5, "provider"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    const-string v5, "domain"

    invoke-static {p0, v3, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #providerDomain:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->hasWildchars(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 122
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4
    .parameter "context"
    .parameter "passwordField"

    .prologue
    const/16 v3, 0x20

    .line 424
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 425
    .local v1, password:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 426
    .local v0, length:I
    if-lez v0, :cond_1

    .line 427
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 428
    :cond_0
    const v2, 0x7f08012f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 431
    :cond_1
    return-void
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 65
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 66
    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 62
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static findManualInfoForDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "domain"
    .parameter "protocal"

    .prologue
    const/4 v9, 0x2

    .line 141
    const/4 v3, 0x0

    .line 143
    .local v3, serverName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 145
    .local v4, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 146
    .local v1, isMatched:Z
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, xmlEventType:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 147
    if-ne v5, v9, :cond_2

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    const-string v6, "domain"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 151
    .local v2, providerDomain:Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->matchProvider(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "providers line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Domain contains multiple globals"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #isMatched:Z
    .end local v2           #providerDomain:Ljava/lang/String;
    .end local v4           #xml:Landroid/content/res/XmlResourceParser;
    .end local v5           #xmlEventType:I
    :catch_1
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Email"

    const-string v7, "Error while trying to load manual_setup_helper settings."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 158
    .restart local v1       #isMatched:Z
    .restart local v4       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v5       #xmlEventType:I
    :cond_2
    if-ne v5, v9, :cond_3

    :try_start_3
    const-string v6, "pop3support"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    const-string v6, "pop3"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    const-string v6, "servername"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 162
    :cond_3
    if-ne v5, v9, :cond_4

    const-string v6, "imapsupport"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    const-string v6, "imap"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    const-string v6, "servername"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 166
    :cond_4
    if-ne v5, v9, :cond_5

    const-string v6, "eassupport"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    const-string v6, "eas"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    const-string v6, "servername"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 170
    :cond_5
    if-ne v5, v9, :cond_6

    const-string v6, "smtpsupport"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    const-string v6, "smtp"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    const-string v6, "servername"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 174
    :cond_6
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    move-object v6, v3

    .line 177
    goto/16 :goto_1
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 5
    .parameter "context"
    .parameter "domain"

    .prologue
    .line 198
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/email/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v2

    .line 199
    .local v2, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v2, :cond_0

    .line 200
    const v4, 0x7f05000c

    invoke-static {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v2

    .line 202
    :cond_0
    if-nez v2, :cond_1

    .line 203
    const v4, 0x7f05000b

    invoke-static {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v2

    .line 207
    :cond_1
    if-nez v2, :cond_2

    .line 208
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v0

    .line 209
    .local v0, extension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 211
    .local v3, pluginContext:Landroid/content/Context;
    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderXml()I

    move-result v1

    .line 212
    .local v1, extensionProviderXml:I
    invoke-static {v3, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v2

    .line 217
    .end local v0           #extension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    .end local v1           #extensionProviderXml:I
    .end local v3           #pluginContext:Landroid/content/Context;
    :cond_2
    return-object v2
.end method

.method static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 10
    .parameter "context"
    .parameter "domain"
    .parameter "resourceId"

    .prologue
    const/4 v9, 0x2

    .line 230
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 232
    .local v4, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    move-object v2, v1

    .line 233
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v2, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, xmlEventType:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 234
    if-ne v5, v9, :cond_2

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    const-string v6, "domain"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 238
    .local v3, providerDomain:Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->matchProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :try_start_2
    const-string v6, "id"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 241
    const-string v6, "label"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 243
    const-string v6, "note"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v2, v1

    .line 249
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 246
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v0, e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :goto_2
    :try_start_3
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "providers line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Domain contains multiple globals"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 269
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .end local v3           #providerDomain:Ljava/lang/String;
    .end local v4           #xml:Landroid/content/res/XmlResourceParser;
    .end local v5           #xmlEventType:I
    :catch_1
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Email"

    const-string v7, "Error while trying to load provider settings."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 250
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v4       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v5       #xmlEventType:I
    :cond_2
    if-ne v5, v9, :cond_3

    :try_start_4
    const-string v6, "incoming"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 253
    const-string v6, "uri"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 254
    const-string v6, "username"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    :cond_3
    if-ne v5, v9, :cond_4

    const-string v6, "outgoing"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 259
    const-string v6, "uri"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 260
    const-string v6, "username"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 262
    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    goto :goto_3

    .line 245
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v3       #providerDomain:Ljava/lang/String;
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_5
    move-object v1, v2

    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto/16 :goto_1
.end method

.method public static getAccountContentValues(Lcom/android/emailcommon/provider/Account;)Landroid/content/ContentValues;
    .locals 3
    .parameter "account"

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v1, "displayName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "senderName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "signature"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "vipRingtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mVipRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "xml"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 323
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 324
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasWildchars(Ljava/lang/String;)Z
    .locals 4
    .parameter "providerDomain"

    .prologue
    .line 88
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, providerParts:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 91
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, providerPart:Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    const/4 v3, 0x1

    .line 97
    .end local v1           #providerPart:Ljava/lang/String;
    :goto_1
    return v3

    .line 90
    .restart local v1       #providerPart:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1           #providerPart:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "server"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    const/16 v6, 0x2e

    const/4 v2, 0x0

    .line 391
    const/4 v4, 0x0

    .line 392
    .local v4, keepFirstChar:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 393
    .local v0, firstDotIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 395
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, firstWord:Ljava/lang/String;
    const-string v5, "imap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 398
    .local v2, isImapOrPop:Z
    :cond_1
    const-string v5, "mail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 400
    .local v3, isMail:Z
    if-eqz p1, :cond_3

    .line 402
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    .line 417
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    .end local p0
    .end local p1
    :cond_2
    :goto_0
    return-object p0

    .line 408
    .restart local v1       #firstWord:Ljava/lang/String;
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    .restart local p0
    .restart local p1
    :cond_3
    if-eqz v2, :cond_5

    .line 409
    add-int/lit8 v4, v0, 0x1

    .line 417
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    .end local p1
    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 410
    .restart local v1       #firstWord:Ljava/lang/String;
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    .restart local p1
    :cond_5
    if-eqz v3, :cond_4

    goto :goto_0

    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_6
    move-object p1, p2

    .line 417
    goto :goto_1
.end method

.method static matchProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "testDomain"
    .parameter "providerDomain"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 283
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, testParts:[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, providerParts:[Ljava/lang/String;
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v5

    .line 288
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 289
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, testPart:Ljava/lang/String;
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, providerPart:Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v1           #providerPart:Ljava/lang/String;
    .end local v3           #testPart:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "testPart"
    .parameter "providerPart"

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 301
    .local v2, providerLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v4

    .line 304
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 306
    .local v3, testChar:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 307
    .local v1, providerChar:C
    if-eq v3, v1, :cond_2

    const/16 v5, 0x3f

    if-ne v1, v5, :cond_0

    .line 304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v1           #providerChar:C
    .end local v3           #testChar:C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
