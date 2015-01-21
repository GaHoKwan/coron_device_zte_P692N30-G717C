.class public Lzte/com/cn/cloudnotepad/utils/NoteUtils;
.super Ljava/lang/Object;
.source "NoteUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoteUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "noteId"
    .parameter "mResourceData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzte/com/cn/cloudnotepad/data/ResourceData;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, mDeleteFileNameList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/data/ResourceData;->getResourceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 96
    .end local v0           #i:I
    .end local v1           #resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 91
    .restart local v0       #i:I
    .restart local v1       #resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
    .locals 7
    .parameter "context"
    .parameter "noteId"
    .parameter "mControlsUtils"

    .prologue
    .line 168
    invoke-static {p0, p1, p2}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNoteFiles(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 170
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "cover_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, coverFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    :cond_0
    const/4 v4, 0x0

    .line 175
    .local v4, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    instance-of v5, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v5, :cond_5

    .line 176
    check-cast p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .end local p0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v4

    .line 184
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 185
    invoke-virtual {v4, p1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v1

    .line 186
    .local v1, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const/4 v2, 0x0

    .line 187
    .local v2, map:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 188
    iget-object v2, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 190
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 191
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, mapFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 196
    .end local v3           #mapFile:Ljava/io/File;
    :cond_3
    invoke-virtual {v4, p1}, Lzte/com/cn/cloudnotepad/data/NotesData;->deleteNoteData(I)V

    .line 198
    .end local v1           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v2           #map:Ljava/lang/String;
    :cond_4
    return-void

    .line 177
    .restart local p0
    :cond_5
    instance-of v5, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    if-eqz v5, :cond_6

    .line 178
    check-cast p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    .end local p0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v4

    goto :goto_0

    .line 179
    .restart local p0
    :cond_6
    instance-of v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    if-eqz v5, :cond_7

    .line 180
    check-cast p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    .end local p0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v4

    goto :goto_0

    .line 181
    .restart local p0
    :cond_7
    instance-of v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    if-eqz v5, :cond_1

    .line 182
    check-cast p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .end local p0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v4

    goto :goto_0
.end method

.method private static deleteNoteFiles(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
    .locals 5
    .parameter "mContext"
    .parameter "noteId"
    .parameter "mControlsUtils"

    .prologue
    .line 53
    new-instance v1, Lzte/com/cn/cloudnotepad/data/ResourceData;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/data/ResourceData;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;
    invoke-virtual {v1, p1}, Lzte/com/cn/cloudnotepad/data/ResourceData;->getUniqueResourceNameListByNoteId(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 55
    .local v2, removeFileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 69
    const/4 v2, 0x0

    .line 70
    goto :goto_0

    .line 59
    :cond_2
    const-string v3, "text"

    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 62
    const-string v3, "video"

    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {p2, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 58
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getNoteInfo(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)[Ljava/lang/CharSequence;
    .locals 14
    .parameter "mContext"
    .parameter "mNotesData"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 122
    .local v4, updateTime:Landroid/text/format/Time;
    iget-wide v5, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v4, Landroid/text/format/Time;->year:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 124
    iget v8, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget v8, v4, Landroid/text/format/Time;->hour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    iget v8, v4, Landroid/text/format/Time;->minute:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    .line 123
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, updateString:Ljava/lang/String;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 127
    .local v1, createTime:Landroid/text/format/Time;
    iget-wide v5, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v1, Landroid/text/format/Time;->year:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 129
    iget v8, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget v8, v1, Landroid/text/format/Time;->hour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    iget v8, v1, Landroid/text/format/Time;->minute:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    .line 128
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, createString:Ljava/lang/String;
    new-array v2, v13, [Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v11

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v12

    .line 141
    .local v2, items:[Ljava/lang/CharSequence;
    return-object v2
.end method

.method public static getNoteSize(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "controlsUtils"
    .parameter "title"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 147
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 159
    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 160
    const/16 v1, 0x64

    .line 163
    :cond_0
    int-to-long v3, v1

    invoke-static {v3, v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 148
    :cond_1
    const-string v3, "text"

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    const-string v3, "record"

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v4

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    .line 152
    .local v2, sizeString:Ljava/lang/String;
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertStringtoSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 155
    .end local v2           #sizeString:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertStringtoSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public static getNotebookItems(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 6
    .parameter "mContext"

    .prologue
    .line 110
    new-instance v2, Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    .line 111
    .local v2, mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 112
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 113
    .local v3, num:I
    add-int/lit8 v4, v3, -0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 114
    .local v1, items:[Ljava/lang/CharSequence;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 117
    return-object v1

    .line 115
    :cond_0
    add-int/lit8 v5, v0, -0x2

    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    aput-object v4, v1, v5

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isValidFilename(Ljava/lang/String;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 221
    .local v0, filename:[B
    const-string v4, "//"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\\"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 224
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 225
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 226
    const/16 v4, 0x7c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 227
    array-length v4, v0

    if-eqz v4, :cond_1

    .line 228
    array-length v4, v0

    if-ne v4, v3, :cond_0

    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v1, v2

    .line 229
    .local v1, invalidFilename:Z
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return v2

    .end local v1           #invalidFilename:Z
    :cond_1
    move v1, v3

    .line 228
    goto :goto_0

    .restart local v1       #invalidFilename:Z
    :cond_2
    move v2, v3

    .line 229
    goto :goto_1
.end method

.method public static resolveResourceString(Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 5
    .parameter "drawableSrc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, resList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v2, "<"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 106
    const-string v2, "NoteUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
