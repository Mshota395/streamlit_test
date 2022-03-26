import streamlit as st

from templates.func import *


def main():

    item = st.sidebar.selectbox("選んでください", item_dict.keys())

    st.write(item_dict[item])


if __name__ == "__main__":
    main()
