.class Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;
.super Ljava/lang/Object;
.source "AudioSpeechLoggerX.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    const/4 v10, -0x1

    const v9, 0x7f0801a0

    const/16 v8, 0x5a4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 94
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    const-string v5, "engineermode_audiolog_preferences"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 96
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$000(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #calls: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->onClickSpeechLogger(Landroid/content/SharedPreferences$Editor;Z)V
    invoke-static {v4, v0, p2}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$100(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;Landroid/content/SharedPreferences$Editor;Z)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$200(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    if-eqz p2, :cond_2

    .line 101
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B

    move-result-object v4

    const/16 v5, 0x5a0

    aget-byte v6, v4, v5

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 102
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$476(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)I

    .line 103
    const-string v4, "EM/Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E mVmLogState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I
    invoke-static {v6}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$400(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B

    move-result-object v4

    invoke-static {v4, v8}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v1

    .line 110
    .local v1, index:I
    if-eqz v1, :cond_0

    .line 111
    const-string v4, "EM/Audio"

    const-string v5, "set CTM4WAY parameter failed"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    .end local v1           #index:I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B

    move-result-object v4

    const/16 v5, 0x5a0

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, -0x3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 106
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    const/4 v5, -0x3

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$472(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)I

    .line 107
    const-string v4, "EM/Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D mVmLogState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I
    invoke-static {v6}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$400(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$500(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    if-eqz p2, :cond_4

    .line 117
    const-string v4, "EM/Audio"

    const-string v5, "mCKEPLDebug checked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/16 v4, 0xa0

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    goto/16 :goto_0

    .line 120
    :cond_4
    const-string v4, "EM/Audio"

    const-string v5, "mCKEPLDebug Unchecked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/16 v4, 0xa0

    invoke-static {v4, v6}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    goto/16 :goto_0

    .line 123
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$600(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 124
    if-eqz p2, :cond_6

    .line 125
    const-string v4, "EM/Audio"

    const-string v5, "mCbVoipLogger checked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #calls: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->setVOIP(I)Z
    invoke-static {v4, v7}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$700(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)Z

    goto/16 :goto_0

    .line 128
    :cond_6
    const-string v4, "EM/Audio"

    const-string v5, "mCbVoipLogger Unchecked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #calls: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->setVOIP(I)Z
    invoke-static {v4, v6}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$700(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)Z

    goto/16 :goto_0

    .line 131
    :cond_7
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$800(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 132
    if-eqz p2, :cond_9

    .line 133
    const-string v4, "EM/Audio"

    const-string v5, "mCKBEPL checked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v4, 0x60

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v3

    .line 135
    .local v3, ret:I
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B

    move-result-object v4

    invoke-static {v4, v8}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    .line 136
    if-ne v3, v10, :cond_8

    .line 137
    const-string v4, "EM/Audio"

    const-string v5, "set mCKBEPL parameter failed"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_8
    const-string v4, "epl_status"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 144
    .end local v3           #ret:I
    :cond_9
    const-string v4, "EM/Audio"

    const-string v5, "mCKBEPL unchecked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_a
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$900(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    if-eqz p2, :cond_d

    .line 148
    const-string v4, "EM/Audio"

    const-string v5, "mCKBNormalVm checked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$1000(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 150
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #setter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z
    invoke-static {v4, v6}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$1002(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;Z)Z

    goto/16 :goto_0

    .line 152
    :cond_b
    const-string v4, "EM/Audio"

    const-string v5, "mCKBNormalVm checked ok"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v4, 0x60

    invoke-static {v4, v6}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v3

    .line 154
    .restart local v3       #ret:I
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B

    move-result-object v4

    invoke-static {v4, v8}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    .line 155
    if-ne v3, v10, :cond_c

    .line 156
    const-string v4, "EM/Audio"

    const-string v5, "set mCKBNormalVm parameter failed"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_c
    const-string v4, "epl_status"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 164
    .end local v3           #ret:I
    :cond_d
    const-string v4, "EM/Audio"

    const-string v5, "mCKBNormalVm unchecked"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
