.class public Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;
.super Ljava/lang/Object;
.source "ContactPluginExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactPluginExtensionContainer"


# instance fields
.field private mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

.field private mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

.field private mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

.field private mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

.field private mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

.field private mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

.field private mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

.field private mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

.field private mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

.field private mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

.field private mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

.field private mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

.field private mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

.field private mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

.field private mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

.field private mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

.field private mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

.field private mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

.field private mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

.field private mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

.field private mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    .line 57
    new-instance v0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallListExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    .line 58
    new-instance v0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    .line 59
    new-instance v0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    .line 60
    new-instance v0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    .line 61
    new-instance v0, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    .line 62
    new-instance v0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    .line 63
    new-instance v0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    .line 64
    new-instance v0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    .line 65
    new-instance v0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    .line 66
    new-instance v0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    .line 67
    new-instance v0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    .line 68
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    .line 69
    new-instance v0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    .line 70
    new-instance v0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    .line 71
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    .line 72
    new-instance v0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    .line 73
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    .line 74
    new-instance v0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    .line 75
    new-instance v0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    .line 76
    new-instance v0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    .line 77
    return-void
.end method


# virtual methods
.method public addExtensions(Lcom/android/contacts/ext/IContactPlugin;)V
    .locals 3
    .parameter "contactPlugin"

    .prologue
    .line 185
    const-string v0, "ContactPluginExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactPlugin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->add(Lcom/android/contacts/ext/CallDetailExtension;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->add(Lcom/android/contacts/ext/CallListExtension;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->add(Lcom/android/contacts/ext/ContactAccountExtension;)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->add(Lcom/android/contacts/ext/ContactDetailExtension;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->add(Lcom/android/contacts/ext/ContactListExtension;)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;->add(Lcom/android/contacts/ext/DialPadExtension;)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->add(Lcom/android/contacts/ext/DialtactsExtension;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->add(Lcom/android/contacts/ext/SpeedDialExtension;)V

    .line 194
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createSimPickExtension()Lcom/android/contacts/ext/SimPickExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->add(Lcom/android/contacts/ext/SimPickExtension;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->add(Lcom/android/contacts/ext/QuickContactExtension;)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactsCallOptionHandlerExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->add(Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->add(Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->add(Lcom/android/contacts/ext/CallLogAdapterExtension;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->add(Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->add(Lcom/android/contacts/ext/DialerSearchAdapterExtension;)V

    .line 202
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->add(Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->add(Lcom/android/contacts/ext/IccCardExtension;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->add(Lcom/android/contacts/ext/ContactDetailEnhancementExtension;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->add(Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->add(Lcom/android/contacts/ext/SimServiceExtension;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    invoke-interface {p1}, Lcom/android/contacts/ext/IContactPlugin;->createImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->add(Lcom/android/contacts/ext/ImportExportEnhancementExtension;)V

    .line 209
    return-void
.end method

.method public getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;
    .locals 2

    .prologue
    .line 80
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return CallDetailExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    return-object v0
.end method

.method public getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 2

    .prologue
    .line 149
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallDetailHistoryAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    return-object v0
.end method

.method public getCallListExtension()Lcom/android/contacts/ext/CallListExtension;
    .locals 2

    .prologue
    .line 85
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return CallListExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    return-object v0
.end method

.method public getCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;
    .locals 2

    .prologue
    .line 144
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    return-object v0
.end method

.method public getCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 2

    .prologue
    .line 159
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogSearchResultActivityExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    return-object v0
.end method

.method public getCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 2

    .prologue
    .line 169
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogSimInfoHelperExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    return-object v0
.end method

.method public getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;
    .locals 3

    .prologue
    .line 90
    const-string v0, "ContactPluginExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return ContactAccountExtension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    return-object v0
.end method

.method public getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .locals 2

    .prologue
    .line 164
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactDetailEnhancementExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    return-object v0
.end method

.method public getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;
    .locals 2

    .prologue
    .line 95
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return ContactDetailExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    return-object v0
.end method

.method public getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;
    .locals 2

    .prologue
    .line 100
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return ContactListExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    return-object v0
.end method

.method public getContactsCallOptionHandlerExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
    .locals 2

    .prologue
    .line 130
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactsCallOptionHandlerExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    return-object v0
.end method

.method public getContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 2

    .prologue
    .line 139
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactsCallOptionHandlerFactoryExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    return-object v0
.end method

.method public getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;
    .locals 2

    .prologue
    .line 105
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return DialPadExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    return-object v0
.end method

.method public getDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;
    .locals 2

    .prologue
    .line 154
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getDialerSearchAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    return-object v0
.end method

.method public getDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;
    .locals 2

    .prologue
    .line 110
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return DialtactsExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    return-object v0
.end method

.method public getIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    return-object v0
.end method

.method public getImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .locals 2

    .prologue
    .line 179
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getImportExportEnhancementExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    return-object v0
.end method

.method public getQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;
    .locals 2

    .prologue
    .line 125
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return QuickContactExtension"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    return-object v0
.end method

.method public getSimPickExtension()Lcom/android/contacts/ext/SimPickExtension;
    .locals 2

    .prologue
    .line 120
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return SimPickExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    return-object v0
.end method

.method public getSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;
    .locals 2

    .prologue
    .line 174
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getSimServiceExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    return-object v0
.end method

.method public getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;
    .locals 2

    .prologue
    .line 115
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return SpeedDialExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    return-object v0
.end method
