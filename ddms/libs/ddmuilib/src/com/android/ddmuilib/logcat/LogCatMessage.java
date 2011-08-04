/*
 * Copyright (C) 2011 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.ddmuilib.logcat;

import com.android.ddmlib.Log.LogLevel;

/**
 * Model a single log message output from {@code logcat -v long}.
 * A logcat message has a {@link LogLevel}, the pid (process id) of the process
 * generating the message, the time at which the message was generated, and
 * the tag and message itself.
 */
public final class LogCatMessage {
    private final LogLevel mLogLevel;
    private final String mPidString;
    private final String mTag;
    private final String mTime;
    private final String mMessage;

    /**
     * Construct an immutable log message object.
     */
    public LogCatMessage(LogLevel logLevel, String pid, String tag, String time, String msg) {
        mLogLevel = logLevel;
        mPidString = pid;
        mTag = tag;
        mTime = time;
        mMessage = msg;
    }

    public LogLevel getLogLevel() {
        return mLogLevel;
    }

    public String getPidString() {
        return mPidString;
    }

    public String getTag() {
        return mTag;
    }

    public String getTime() {
        return mTime;
    }

    public String getMessage() {
        return mMessage;
    }

    @Override
    public String toString() {
        return mTime + ": "
                + mLogLevel.getPriorityLetter() + "/"
                + mTag + "("
                + mPidString + "): "
                + mMessage;
    }
}
