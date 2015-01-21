.class Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceCommandSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceCommandAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;",
        ">;"
    }
.end annotation


# instance fields
.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    .line 178
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mCommands:Ljava/util/ArrayList;

    .line 179
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 181
    iput-object p2, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mContext:Landroid/content/Context;

    .line 182
    #calls: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->initDefaultApp()V
    invoke-static {p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$100(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)V

    .line 183
    sget-object v3, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 184
    .local v0, app:Landroid/content/ComponentName;
    #calls: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$200(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    invoke-direct {v4, p1, v2, v0}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0           #app:Landroid/content/ComponentName;
    .end local v2           #label:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;
    .locals 1
    .parameter "position"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, holder:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
    if-nez p2, :cond_2

    .line 196
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040002

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    new-instance v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;

    .end local v1           #holder:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    invoke-direct {v1, v4}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)V

    .line 198
    .restart local v1       #holder:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
    const v4, 0x7f0a000b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mPrimary:Landroid/widget/TextView;

    .line 200
    const v4, 0x7f0a000c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mSecondary:Landroid/widget/TextView;

    .line 202
    const v4, 0x7f0a000d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mRadio:Landroid/widget/RadioButton;

    .line 204
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    move-result-object v0

    .line 210
    .local v0, app:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;
    iget-object v4, v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080013

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, primary:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080015

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, secondary:Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v2           #primary:Ljava/lang/String;
    .end local v3           #secondary:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J
    invoke-static {v4}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$300(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mChecked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J
    invoke-static {v6}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$300(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position + getItemId(position)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$400(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    #getter for: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J
    invoke-static {v6}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$300(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 229
    iget-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 234
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItem(position)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getItem(position).mComponentName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    move-result-object v6

    iget-object v6, v6, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$400(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;->getItem(I)Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    :cond_1
    :goto_1
    return-object p2

    .line 206
    .end local v0           #app:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
    check-cast v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;

    .restart local v1       #holder:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
    goto/16 :goto_0

    .line 238
    .restart local v0       #app:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;
    :cond_3
    iget-object v4, v1, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->mRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method
