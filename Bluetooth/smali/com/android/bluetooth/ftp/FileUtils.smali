.class public Lcom/android/bluetooth/ftp/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkAvailableSpace(J)Z
    .locals 9
    .parameter "filelength"

    .prologue
    const-wide/16 v7, 0x4

    .line 237
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/sdcard"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    mul-long v0, v3, v5

    .line 242
    .local v0, availabledisksize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    mul-long/2addr v3, v5

    cmp-long v3, v3, p0

    if-gez v3, :cond_0

    .line 244
    const/4 v3, 0x0

    .line 246
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static final checkMountedState()Z
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final copyFile(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I
    .locals 17
    .parameter "mCallback"
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 148
    if-nez p2, :cond_1

    .line 149
    const/16 v13, 0xd0

    .line 212
    :cond_0
    :goto_0
    return v13

    .line 150
    :cond_1
    const/4 v7, 0x0

    .line 151
    .local v7, reader:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 153
    .local v11, writer:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    .end local v7           #reader:Ljava/io/FileInputStream;
    .local v8, reader:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 162
    .end local v11           #writer:Ljava/io/FileOutputStream;
    .local v12, writer:Ljava/io/FileOutputStream;
    if-eqz v8, :cond_2

    if-nez v12, :cond_2

    .line 164
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 172
    :cond_2
    new-instance v3, Ljava/io/BufferedInputStream;

    const/high16 v13, 0x4

    invoke-direct {v3, v8, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 173
    .local v3, ins:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/high16 v13, 0x4

    invoke-direct {v4, v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 174
    .local v4, os:Ljava/io/BufferedOutputStream;
    const/high16 v13, 0x4

    new-array v1, v13, [B

    .line 175
    .local v1, buff:[B
    const/4 v5, 0x0

    .line 176
    .local v5, position:I
    const/4 v6, 0x0

    .line 177
    .local v6, readLength:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 180
    .local v9, timestamp:J
    :goto_1
    int-to-long v13, v5

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 181
    sget-boolean v13, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    if-eqz v13, :cond_6

    .line 182
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    .line 195
    :cond_3
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile completed in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 201
    if-eqz v3, :cond_4

    .line 203
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 204
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 211
    :cond_4
    const/16 v13, 0x1390

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/bluetooth/ftp/FileUtils;->sendMessage(Landroid/os/Handler;ILjava/lang/String;)V

    .line 212
    const/16 v13, 0xa0

    goto :goto_0

    .line 155
    .end local v1           #buff:[B
    .end local v3           #ins:Ljava/io/BufferedInputStream;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .end local v5           #position:I
    .end local v6           #readLength:I
    .end local v8           #reader:Ljava/io/FileInputStream;
    .end local v9           #timestamp:J
    .end local v12           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    .restart local v11       #writer:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile file not found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    const/16 v13, 0xd0

    .line 162
    if-eqz v7, :cond_0

    if-nez v11, :cond_0

    .line 164
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v2

    .line 166
    .local v2, e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile close stream failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v7           #reader:Ljava/io/FileInputStream;
    .end local v11           #writer:Ljava/io/FileOutputStream;
    :goto_3
    const/16 v13, 0xd0

    goto/16 :goto_0

    .line 158
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    .restart local v11       #writer:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 159
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile open stream failed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 160
    const/16 v13, 0xd0

    .line 162
    if-eqz v7, :cond_0

    if-nez v11, :cond_0

    .line 164
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 165
    :catch_3
    move-exception v2

    .line 166
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile close stream failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v7, :cond_5

    if-nez v11, :cond_5

    .line 164
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 162
    :cond_5
    throw v13

    .line 186
    .end local v7           #reader:Ljava/io/FileInputStream;
    .end local v11           #writer:Ljava/io/FileOutputStream;
    .restart local v1       #buff:[B
    .restart local v3       #ins:Ljava/io/BufferedInputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #position:I
    .restart local v6       #readLength:I
    .restart local v8       #reader:Ljava/io/FileInputStream;
    .restart local v9       #timestamp:J
    .restart local v12       #writer:Ljava/io/FileOutputStream;
    :cond_6
    const/4 v13, 0x0

    const/high16 v14, 0x4

    :try_start_a
    invoke-virtual {v3, v1, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 188
    const/4 v13, 0x0

    invoke-virtual {v4, v1, v13, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 189
    add-int/2addr v5, v6

    goto/16 :goto_1

    .line 196
    :catch_4
    move-exception v2

    .line 197
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v13, 0xd0

    goto/16 :goto_0

    .line 205
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 206
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "input/output stream close"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v13, 0xd0

    goto/16 :goto_0

    .line 165
    .end local v1           #buff:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ins:Ljava/io/BufferedInputStream;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .end local v5           #position:I
    .end local v6           #readLength:I
    .end local v8           #reader:Ljava/io/FileInputStream;
    .end local v9           #timestamp:J
    .end local v12           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    .restart local v11       #writer:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    .line 166
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile close stream failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 165
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #reader:Ljava/io/FileInputStream;
    .end local v11           #writer:Ljava/io/FileOutputStream;
    .restart local v8       #reader:Ljava/io/FileInputStream;
    .restart local v12       #writer:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    .line 166
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "FileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyFile close stream failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #writer:Ljava/io/FileOutputStream;
    .restart local v11       #writer:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8           #reader:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 158
    .end local v7           #reader:Ljava/io/FileInputStream;
    .restart local v8       #reader:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8           #reader:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 155
    .end local v7           #reader:Ljava/io/FileInputStream;
    .restart local v8       #reader:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8           #reader:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static final copyFolders(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I
    .locals 9
    .parameter "mCallback"
    .parameter "src"
    .parameter "dest"

    .prologue
    const/16 v4, 0xd0

    const/16 v5, 0xa0

    .line 109
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyFolders src "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, ret:I
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 114
    const-string v5, "FileUtils"

    const-string v6, "error in listing directory"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_4

    .line 119
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, recdest:Ljava/io/File;
    aget-object v6, v0, v1

    invoke-static {p0, v6, v2}, Lcom/android/bluetooth/ftp/FileUtils;->copyFolders(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I

    move-result v3

    .line 122
    if-ne v3, v5, :cond_0

    .line 117
    .end local v2           #recdest:Ljava/io/File;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_3
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v2       #recdest:Ljava/io/File;
    aget-object v6, v0, v1

    invoke-static {p0, v6, v2}, Lcom/android/bluetooth/ftp/FileUtils;->copyFile(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I

    move-result v3

    .line 127
    if-eq v3, v5, :cond_2

    goto :goto_0

    .end local v2           #recdest:Ljava/io/File;
    :cond_4
    move v4, v5

    .line 131
    goto :goto_0
.end method

.method public static final deleteDirectory(Landroid/os/Handler;Ljava/io/File;)Z
    .locals 4
    .parameter "mCallback"
    .parameter "dir"

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_0

    .line 76
    const-string v2, "FileUtils"

    const-string v3, "error in listing directory "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    .line 92
    .end local v0           #files:[Ljava/io/File;
    :goto_0
    return v2

    .line 79
    .restart local v0       #files:[Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 80
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lcom/android/bluetooth/ftp/FileUtils;->deleteDirectory(Landroid/os/Handler;Ljava/io/File;)Z

    .line 79
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 86
    const/16 v2, 0x1391

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/bluetooth/ftp/FileUtils;->sendMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_2

    .line 92
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static final doesPathExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, searchfolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final sendCustomMessage(Landroid/os/Handler;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "mCallback"
    .parameter "msgtype"
    .parameter "files"
    .parameter "types"

    .prologue
    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 297
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "FileUtils"

    const-string v3, "sendCustomMessage "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, "filepaths"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    const-string v2, "mimetypes"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 303
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 307
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static final sendMessage(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 10
    .parameter "mCallback"
    .parameter "msgtype"
    .parameter "name"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    .line 254
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 255
    .local v5, msg:Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->what:I

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, args:Landroid/os/Bundle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/mnt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 262
    .local v4, mimeType:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, extension:Ljava/lang/String;
    const/4 v7, 0x0

    .line 263
    .local v7, type:Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 264
    .local v1, dotIndex:I
    if-gez v1, :cond_1

    .line 289
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dotIndex:I
    .end local v2           #extension:Ljava/lang/String;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #dotIndex:I
    .restart local v2       #extension:Ljava/lang/String;
    .restart local v4       #mimeType:Ljava/lang/String;
    .restart local v5       #msg:Landroid/os/Message;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 270
    .local v3, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    if-eqz v7, :cond_2

    .line 273
    move-object v4, v7

    .line 276
    :cond_2
    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v8, "filepath"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v8, "mimetype"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
